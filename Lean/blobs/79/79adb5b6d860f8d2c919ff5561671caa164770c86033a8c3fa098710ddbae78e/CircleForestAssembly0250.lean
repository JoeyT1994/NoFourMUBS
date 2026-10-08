import CircleFullInterface
import CircleForestAssembly0240
import CircleForestAssembly0241
import CircleForestAssembly0244
import CircleForestAssembly0249
import CircleForestChunk0918
import CircleForestChunk0955
import CircleForestChunk0956
import CircleForestChunk0957
import CircleForestChunk0958
import CircleForestChunk0959
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1529813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 22)))
theorem cover_1529813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529813 := by
  apply coveredState_split_literal (state := state_1529813) 3
    state_1529814 state_1529963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529814
  · exact cover_1529963
#print axioms cover_1529813

def state_1529812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 11)))
theorem cover_1529812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529812 := by
  apply coveredState_split_literal (state := state_1529812) 4
    state_1529813 state_1529984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529813
  · exact cover_1529984
#print axioms cover_1529812

def state_1529782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 11)))
theorem cover_1529782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529782 := by
  apply coveredState_split_literal (state := state_1529782) 2
    state_1529783 state_1529812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529783
  · exact cover_1529812
#print axioms cover_1529782

def state_1530001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 11)))
theorem cover_1530001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530001 := by
  apply coveredState_split_literal (state := state_1530001) 2
    state_1530002 state_1530013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530002
  · exact cover_1530013
#print axioms cover_1530001

def state_1529781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 11)))
theorem cover_1529781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529781 := by
  apply coveredState_split_literal (state := state_1529781) 0
    state_1529782 state_1530001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529782
  · exact cover_1530001
#print axioms cover_1529781

def state_1529521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1529521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529521 := by
  apply coveredState_split_literal (state := state_1529521) 3
    state_1529522 state_1529781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1529522
  · exact cover_1529781
#print axioms cover_1529521

def state_1523871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1523871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523871 := by
  apply coveredState_split_literal (state := state_1523871) 1
    state_1523872 state_1529521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523872
  · exact cover_1529521
#print axioms cover_1523871

def state_1521307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 5)))
theorem cover_1521307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521307 := by
  apply coveredState_split_literal (state := state_1521307) 4
    state_1521308 state_1523871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521308
  · exact cover_1523871
#print axioms cover_1521307

def state_1520901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1520901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520901 := by
  apply coveredState_split_literal (state := state_1520901) 2
    state_1520902 state_1521307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520902
  · exact cover_1521307
#print axioms cover_1520901

def state_1520900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1520900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520900 := by
  apply coveredState_split_literal (state := state_1520900) 0
    state_1520901 state_1530070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520901
  · exact cover_1530070
#print axioms cover_1520900

def state_1520870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_1520870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520870 := by
  apply coveredState_split_literal (state := state_1520870) 4
    state_1520871 state_1520900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520871
  · exact cover_1520900
#print axioms cover_1520870

def state_1520869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_1520869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520869 := by
  apply coveredState_split_literal (state := state_1520869) 3
    state_1520870 state_1530115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520870
  · exact cover_1530115
#print axioms cover_1520869

def state_1520849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1520849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520849 := by
  apply coveredState_split_literal (state := state_1520849) 2
    state_1520850 state_1520869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520850
  · exact cover_1520869
#print axioms cover_1520849

def state_1520465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1520465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520465 := by
  apply coveredState_split_literal (state := state_1520465) 1
    state_1520466 state_1520849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520466
  · exact cover_1520849
#print axioms cover_1520465

def state_1520464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1520464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520464 := by
  apply coveredState_split_literal (state := state_1520464) 0
    state_1520465 state_1530178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520465
  · exact cover_1530178
#print axioms cover_1520464

def state_1530286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_1530286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530286 := by
  apply coveredState_split_literal (state := state_1530286) 0
    state_1530287 state_1530346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530287
  · exact cover_1530346
#print axioms cover_1530286

def state_1530276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_1530276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530276 := by
  apply coveredState_split_literal (state := state_1530276) 4
    state_1530277 state_1530286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530277
  · exact cover_1530286
#print axioms cover_1530276

def state_1530214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_1530214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530214 := by
  apply coveredState_split_literal (state := state_1530214) 3
    state_1530215 state_1530276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530215
  · exact cover_1530276
#print axioms cover_1530214

def state_1530213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1530213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530213 := by
  apply coveredState_split_literal (state := state_1530213) 2
    state_1530214 state_1530359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530214
  · exact cover_1530359
#print axioms cover_1530213

def state_1530422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
theorem cover_1530422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530422 := by
  apply coveredState_split_literal (state := state_1530422) 0
    state_1530423 state_1530478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530423
  · exact cover_1530478
#print axioms cover_1530422

def state_1530421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
theorem cover_1530421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530421 := by
  apply coveredState_split_literal (state := state_1530421) 4
    state_1530422 state_1530491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530422
  · exact cover_1530491
#print axioms cover_1530421

def state_1530420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_1530420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530420 := by
  apply coveredState_split_literal (state := state_1530420) 3
    state_1530421 state_1530492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530421
  · exact cover_1530492
#print axioms cover_1530420

def state_1530400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1530400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530400 := by
  apply coveredState_split_literal (state := state_1530400) 2
    state_1530401 state_1530420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530401
  · exact cover_1530420
#print axioms cover_1530400

def state_1530212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1530212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530212 := by
  apply coveredState_split_literal (state := state_1530212) 1
    state_1530213 state_1530400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530213
  · exact cover_1530400
#print axioms cover_1530212

def state_1530211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1530211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530211 := by
  apply coveredState_split_literal (state := state_1530211) 0
    state_1530212 state_1530509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530212
  · exact cover_1530509
#print axioms cover_1530211

def state_1520463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1520463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520463 := by
  apply coveredState_split_literal (state := state_1520463) 4
    state_1520464 state_1530211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520464
  · exact cover_1530211
#print axioms cover_1520463

def state_1530565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1530565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530565 := by
  apply coveredState_split_literal (state := state_1530565) 0
    state_1530566 state_1530621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530566
  · exact cover_1530621
#print axioms cover_1530565

def state_1530717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1530717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530717 := by
  apply coveredState_split_literal (state := state_1530717) 2
    state_1530718 state_1530781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530718
  · exact cover_1530781
#print axioms cover_1530717

def state_1530716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1530716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530716 := by
  apply coveredState_split_literal (state := state_1530716) 1
    state_1530717 state_1530800
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530717
  · exact cover_1530800
#print axioms cover_1530716

def state_1530715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1530715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530715 := by
  apply coveredState_split_literal (state := state_1530715) 0
    state_1530716 state_1530805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530716
  · exact cover_1530805
#print axioms cover_1530715

def state_1530707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_1530707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530707 := by
  apply coveredState_split_literal (state := state_1530707) 4
    state_1530708 state_1530715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530708
  · exact cover_1530715
#print axioms cover_1530707

def state_1530818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_1530818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530818 := by
  apply coveredState_split_literal (state := state_1530818) 4
    state_1530819 state_1530822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530819
  · exact cover_1530822
#print axioms cover_1530818
end Mub6.Numerical.CircleFullD0.Forest
