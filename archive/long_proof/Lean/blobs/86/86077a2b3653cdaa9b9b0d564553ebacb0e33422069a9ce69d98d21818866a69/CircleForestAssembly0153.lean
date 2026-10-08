import CircleFullInterface
import CircleForestAssembly0152
import CircleForestChunk0597
import CircleForestChunk0598
import CircleForestChunk0599
import CircleForestChunk0600
import CircleForestChunk0601
import CircleForestChunk0602
import CircleForestChunk0603
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_382197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_382197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382197 := by
  apply coveredState_split_literal (state := state_382197) 4
    state_382198 state_382213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382198
  · exact cover_382213
#print axioms cover_382197

def state_382498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_382498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382498 := by
  apply coveredState_split_literal (state := state_382498) 4
    state_382499 state_382530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382499
  · exact cover_382530
#print axioms cover_382498

def state_382196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_382196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382196 := by
  apply coveredState_split_literal (state := state_382196) 3
    state_382197 state_382498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382197
  · exact cover_382498
#print axioms cover_382196

def state_382195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_382195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382195 := by
  apply coveredState_split_literal (state := state_382195) 2
    state_382196 state_382573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382196
  · exact cover_382573
#print axioms cover_382195

def state_382622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_382622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382622 := by
  apply coveredState_split_literal (state := state_382622) 2
    state_382623 state_382684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382623
  · exact cover_382684
#print axioms cover_382622

def state_382194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_382194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382194 := by
  apply coveredState_split_literal (state := state_382194) 1
    state_382195 state_382622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382195
  · exact cover_382622
#print axioms cover_382194

def state_382002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_382002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382002 := by
  apply coveredState_split_literal (state := state_382002) 0
    state_382003 state_382194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382003
  · exact cover_382194
#print axioms cover_382002

def state_381926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_381926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381926 := by
  apply coveredState_split_literal (state := state_381926) 4
    state_381927 state_382002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381927
  · exact cover_382002
#print axioms cover_381926

def state_382704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_382704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382704 := by
  apply coveredState_split_literal (state := state_382704) 2
    state_382705 state_382716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382705
  · exact cover_382716
#print axioms cover_382704

def state_382703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_382703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382703 := by
  apply coveredState_split_literal (state := state_382703) 1
    state_382704 state_382769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382704
  · exact cover_382769
#print axioms cover_382703

def state_382906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 11)))
theorem cover_382906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382906 := by
  apply coveredState_split_literal (state := state_382906) 2
    state_382907 state_382966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382907
  · exact cover_382966
#print axioms cover_382906

def state_382896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 11)))
theorem cover_382896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382896 := by
  apply coveredState_split_literal (state := state_382896) 0
    state_382897 state_382906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382897
  · exact cover_382906
#print axioms cover_382896

def state_382886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 5)))
theorem cover_382886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382886 := by
  apply coveredState_split_literal (state := state_382886) 4
    state_382887 state_382896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382887
  · exact cover_382896
#print axioms cover_382886

def state_382872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
theorem cover_382872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382872 := by
  apply coveredState_split_literal (state := state_382872) 3
    state_382873 state_382886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382873
  · exact cover_382886
#print axioms cover_382872

def state_382871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_382871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382871 := by
  apply coveredState_split_literal (state := state_382871) 2
    state_382872 state_382989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382872
  · exact cover_382989
#print axioms cover_382871

def state_382829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_382829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382829 := by
  apply coveredState_split_literal (state := state_382829) 1
    state_382830 state_382871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382830
  · exact cover_382871
#print axioms cover_382829

def state_382807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_382807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382807 := by
  apply coveredState_split_literal (state := state_382807) 0
    state_382808 state_382829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382808
  · exact cover_382829
#print axioms cover_382807

def state_382801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_382801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382801 := by
  apply coveredState_split_literal (state := state_382801) 4
    state_382802 state_382807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382802
  · exact cover_382807
#print axioms cover_382801

def state_382800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_382800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382800 := by
  apply coveredState_split_literal (state := state_382800) 3
    state_382801 state_383006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382801
  · exact cover_383006
#print axioms cover_382800

def state_383055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_383055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383055 := by
  apply coveredState_split_literal (state := state_383055) 1
    state_383056 state_383097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383056
  · exact cover_383097
#print axioms cover_383055

def state_383054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_383054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383054 := by
  apply coveredState_split_literal (state := state_383054) 0
    state_383055 state_383154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383055
  · exact cover_383154
#print axioms cover_383054

def state_383024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_383024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383024 := by
  apply coveredState_split_literal (state := state_383024) 4
    state_383025 state_383054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383025
  · exact cover_383054
#print axioms cover_383024

def state_383297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_383297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383297 := by
  apply coveredState_split_literal (state := state_383297) 2
    state_383298 state_383313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383298
  · exact cover_383313
#print axioms cover_383297

def state_383285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_383285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383285 := by
  apply coveredState_split_literal (state := state_383285) 4
    state_383286 state_383297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383286
  · exact cover_383297
#print axioms cover_383285

def state_383257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_383257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383257 := by
  apply coveredState_split_literal (state := state_383257) 1
    state_383258 state_383285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383258
  · exact cover_383285
#print axioms cover_383257

def state_383255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_383255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383255 := by
  apply coveredState_split_literal (state := state_383255) 0
    state_383256 state_383257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383256
  · exact cover_383257
#print axioms cover_383255

def state_383213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_383213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383213 := by
  apply coveredState_split_literal (state := state_383213) 4
    state_383214 state_383255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383214
  · exact cover_383255
#print axioms cover_383213

def state_383023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_383023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383023 := by
  apply coveredState_split_literal (state := state_383023) 3
    state_383024 state_383213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383024
  · exact cover_383213
#print axioms cover_383023

def state_382799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_382799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382799 := by
  apply coveredState_split_literal (state := state_382799) 2
    state_382800 state_383023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382800
  · exact cover_383023
#print axioms cover_382799

def state_383415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_383415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383415 := by
  apply coveredState_split_literal (state := state_383415) 4
    state_383416 state_383427
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383416
  · exact cover_383427
#print axioms cover_383415

def state_383365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_383365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383365 := by
  apply coveredState_split_literal (state := state_383365) 3
    state_383366 state_383415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383366
  · exact cover_383415
#print axioms cover_383365

def state_383530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_383530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_383530 := by
  apply coveredState_split_literal (state := state_383530) 4
    state_383531 state_383536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_383531
  · exact cover_383536
#print axioms cover_383530
end Mub6.Numerical.CircleFullPrototype.Forest
