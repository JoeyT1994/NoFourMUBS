import CircleFullInterface
import CircleForestAssembly0101
import CircleForestAssembly0108
import CircleForestAssembly0114
import CircleForestChunk0451
import CircleForestChunk0454
import CircleForestChunk0455
import CircleForestChunk0456
import CircleForestChunk0457
import CircleForestChunk0458
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_184001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_184001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184001 := by
  apply coveredState_split_literal (state := state_184001) 2
    state_184002 state_184635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184002
  · exact cover_184635
#print axioms cover_184001

def state_184763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 15)))
theorem cover_184763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184763 := by
  apply coveredState_split_literal (state := state_184763) 2
    state_184764 state_184781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184764
  · exact cover_184781
#print axioms cover_184763

def state_184749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 7)))
theorem cover_184749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184749 := by
  apply coveredState_split_literal (state := state_184749) 4
    state_184750 state_184763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184750
  · exact cover_184763
#print axioms cover_184749

def state_184737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
theorem cover_184737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184737 := by
  apply coveredState_split_literal (state := state_184737) 3
    state_184738 state_184749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184738
  · exact cover_184749
#print axioms cover_184737

def state_184736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_184736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184736 := by
  apply coveredState_split_literal (state := state_184736) 2
    state_184737 state_184836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184737
  · exact cover_184836
#print axioms cover_184736

def state_184000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_184000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184000 := by
  apply coveredState_split_literal (state := state_184000) 1
    state_184001 state_184736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184001
  · exact cover_184736
#print axioms cover_184000

def state_183999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_183999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183999 := by
  apply coveredState_split_literal (state := state_183999) 0
    state_184000 state_184843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184000
  · exact cover_184843
#print axioms cover_183999

def state_183975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_183975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183975 := by
  apply coveredState_split_literal (state := state_183975) 4
    state_183976 state_183999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183976
  · exact cover_183999
#print axioms cover_183975

def state_183939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_183939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183939 := by
  apply coveredState_split_literal (state := state_183939) 3
    state_183940 state_183975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183940
  · exact cover_183975
#print axioms cover_183939

def state_183938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_183938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183938 := by
  apply coveredState_split_literal (state := state_183938) 2
    state_183939 state_184872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183939
  · exact cover_184872
#print axioms cover_183938

def state_183937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_183937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183937 := by
  apply coveredState_split_literal (state := state_183937) 1
    state_183938 state_184893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183938
  · exact cover_184893
#print axioms cover_183937

def state_178795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_178795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178795 := by
  apply coveredState_split_literal (state := state_178795) 0
    state_178796 state_183937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178796
  · exact cover_183937
#print axioms cover_178795

def state_178717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_178717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178717 := by
  apply coveredState_split_literal (state := state_178717) 4
    state_178718 state_178795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178718
  · exact cover_178795
#print axioms cover_178717

def state_178569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_178569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178569 := by
  apply coveredState_split_literal (state := state_178569) 3
    state_178570 state_178717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178570
  · exact cover_178717
#print axioms cover_178569

def state_172269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_172269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172269 := by
  apply coveredState_split_literal (state := state_172269) 2
    state_172270 state_178569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172270
  · exact cover_178569
#print axioms cover_172269

def state_164411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_164411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164411 := by
  apply coveredState_split_literal (state := state_164411) 1
    state_164412 state_172269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164412
  · exact cover_172269
#print axioms cover_164411

def state_184937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_184937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184937 := by
  apply coveredState_split_literal (state := state_184937) 1
    state_184938 state_184993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184938
  · exact cover_184993
#print axioms cover_184937

def state_185063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 5)))
theorem cover_185063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185063 := by
  apply coveredState_split_literal (state := state_185063) 4
    state_185064 state_185119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185064
  · exact cover_185119
#print axioms cover_185063

def state_185214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_185214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185214 := by
  apply coveredState_split_literal (state := state_185214) 0
    state_185215 state_185230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185215
  · exact cover_185230
#print axioms cover_185214

def state_185166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 5)))
theorem cover_185166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185166 := by
  apply coveredState_split_literal (state := state_185166) 4
    state_185167 state_185214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185167
  · exact cover_185214
#print axioms cover_185166

def state_185062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_185062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185062 := by
  apply coveredState_split_literal (state := state_185062) 3
    state_185063 state_185166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185063
  · exact cover_185166
#print axioms cover_185062

def state_185056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_185056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185056 := by
  apply coveredState_split_literal (state := state_185056) 4
    state_185057 state_185062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185057
  · exact cover_185062
#print axioms cover_185056

def state_185048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_185048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185048 := by
  apply coveredState_split_literal (state := state_185048) 3
    state_185049 state_185056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185049
  · exact cover_185056
#print axioms cover_185048

def state_185047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_185047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185047 := by
  apply coveredState_split_literal (state := state_185047) 2
    state_185048 state_185283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185048
  · exact cover_185283
#print axioms cover_185047

def state_185312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_185312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185312 := by
  apply coveredState_split_literal (state := state_185312) 2
    state_185313 state_185342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185313
  · exact cover_185342
#print axioms cover_185312

def state_185046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_185046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185046 := by
  apply coveredState_split_literal (state := state_185046) 1
    state_185047 state_185312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185047
  · exact cover_185312
#print axioms cover_185046

def state_184936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_184936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184936 := by
  apply coveredState_split_literal (state := state_184936) 0
    state_184937 state_185046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184937
  · exact cover_185046
#print axioms cover_184936

def state_185379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_185379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185379 := by
  apply coveredState_split_literal (state := state_185379) 0
    state_185380 state_185441
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185380
  · exact cover_185441
#print axioms cover_185379

def state_184935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_184935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184935 := by
  apply coveredState_split_literal (state := state_184935) 4
    state_184936 state_185379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184936
  · exact cover_185379
#print axioms cover_184935

def state_185477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_185477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185477 := by
  apply coveredState_split_literal (state := state_185477) 0
    state_185478 state_185541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185478
  · exact cover_185541
#print axioms cover_185477

def state_185476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_185476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185476 := by
  apply coveredState_split_literal (state := state_185476) 4
    state_185477 state_185578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185477
  · exact cover_185578
#print axioms cover_185476

def state_184934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_184934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184934 := by
  apply coveredState_split_literal (state := state_184934) 3
    state_184935 state_185476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184935
  · exact cover_185476
#print axioms cover_184934
end Mub6.Numerical.CircleFullPrototype.Forest
