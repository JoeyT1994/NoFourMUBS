import CircleFullInterface
import CircleForestAssembly0048
import CircleForestAssembly0049
import CircleForestAssembly0050
import CircleForestChunk0198
import CircleForestChunk0205
import CircleForestChunk0206
import CircleForestChunk0207
import CircleForestChunk0208
import CircleForestChunk0209
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_986828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 43)))
theorem cover_986828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986828 := by
  apply coveredState_split_literal (state := state_986828) 0
    state_986829 state_986848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986829
  · exact cover_986848
#print axioms cover_986828

def state_986570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 43)))
theorem cover_986570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986570 := by
  apply coveredState_split_literal (state := state_986570) 2
    state_986571 state_986828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986571
  · exact cover_986828
#print axioms cover_986570

def state_985054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 21)))
theorem cover_985054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985054 := by
  apply coveredState_split_literal (state := state_985054) 4
    state_985055 state_986570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985055
  · exact cover_986570
#print axioms cover_985054

def state_984992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 21)))
theorem cover_984992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984992 := by
  apply coveredState_split_literal (state := state_984992) 1
    state_984993 state_985054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984993
  · exact cover_985054
#print axioms cover_984992

def state_984686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
theorem cover_984686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984686 := by
  apply coveredState_split_literal (state := state_984686) 3
    state_984687 state_984992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984687
  · exact cover_984992
#print axioms cover_984686

def state_984596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
theorem cover_984596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984596 := by
  apply coveredState_split_literal (state := state_984596) 0
    state_984597 state_984686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984597
  · exact cover_984686
#print axioms cover_984596

def state_984004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 21)))
theorem cover_984004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984004 := by
  apply coveredState_split_literal (state := state_984004) 2
    state_984005 state_984596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984005
  · exact cover_984596
#print axioms cover_984004

def state_982634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 10)))
theorem cover_982634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982634 := by
  apply coveredState_split_literal (state := state_982634) 4
    state_982635 state_984004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982635
  · exact cover_984004
#print axioms cover_982634

def state_987092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 43)))
theorem cover_987092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987092 := by
  apply coveredState_split_literal (state := state_987092) 0
    state_987093 state_987122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987093
  · exact cover_987122
#print axioms cover_987092

def state_987088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 43)))
theorem cover_987088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987088 := by
  apply coveredState_split_literal (state := state_987088) 2
    state_987089 state_987092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987089
  · exact cover_987092
#print axioms cover_987088

def state_987087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 43)))
theorem cover_987087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987087 := by
  apply coveredState_split_literal (state := state_987087) 1
    state_987088 state_987157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987088
  · exact cover_987157
#print axioms cover_987087

def state_987051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 21)))
theorem cover_987051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987051 := by
  apply coveredState_split_literal (state := state_987051) 4
    state_987052 state_987087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987052
  · exact cover_987087
#print axioms cover_987051

def state_987050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 21)))
theorem cover_987050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987050 := by
  apply coveredState_split_literal (state := state_987050) 3
    state_987051 state_987164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987051
  · exact cover_987164
#print axioms cover_987050

def state_987040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 21)))
theorem cover_987040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987040 := by
  apply coveredState_split_literal (state := state_987040) 0
    state_987041 state_987050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987041
  · exact cover_987050
#print axioms cover_987040

def state_987308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 101 else 43)))
theorem cover_987308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987308 := by
  apply coveredState_split_literal (state := state_987308) 4
    state_987309 state_987346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987309
  · exact cover_987346
#print axioms cover_987308

def state_987298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 50 else 43)))
theorem cover_987298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987298 := by
  apply coveredState_split_literal (state := state_987298) 3
    state_987299 state_987308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987299
  · exact cover_987308
#print axioms cover_987298

def state_987270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 50 else 43)))
theorem cover_987270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987270 := by
  apply coveredState_split_literal (state := state_987270) 0
    state_987271 state_987298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987271
  · exact cover_987298
#print axioms cover_987270

def state_987269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 43)))
theorem cover_987269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987269 := by
  apply coveredState_split_literal (state := state_987269) 2
    state_987270 state_987381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987270
  · exact cover_987381
#print axioms cover_987269

def state_987268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 43)))
theorem cover_987268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987268 := by
  apply coveredState_split_literal (state := state_987268) 1
    state_987269 state_987394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987269
  · exact cover_987394
#print axioms cover_987268

def state_987244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 21)))
theorem cover_987244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987244 := by
  apply coveredState_split_literal (state := state_987244) 4
    state_987245 state_987268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987245
  · exact cover_987268
#print axioms cover_987244

def state_987413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 42)))
theorem cover_987413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987413 := by
  apply coveredState_split_literal (state := state_987413) 4
    state_987414 state_987421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987414
  · exact cover_987421
#print axioms cover_987413

def state_987412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 42)))
theorem cover_987412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987412 := by
  apply coveredState_split_literal (state := state_987412) 3
    state_987413 state_987482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987413
  · exact cover_987482
#print axioms cover_987412

def state_987402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 42)))
theorem cover_987402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987402 := by
  apply coveredState_split_literal (state := state_987402) 0
    state_987403 state_987412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987403
  · exact cover_987412
#print axioms cover_987402

def state_987566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 85)))
theorem cover_987566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987566 := by
  apply coveredState_split_literal (state := state_987566) 3
    state_987567 state_987586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987567
  · exact cover_987586
#print axioms cover_987566

def state_987565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 85)))
theorem cover_987565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987565 := by
  apply coveredState_split_literal (state := state_987565) 0
    state_987566 state_987631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987566
  · exact cover_987631
#print axioms cover_987565

def state_987564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 85)))
theorem cover_987564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987564 := by
  apply coveredState_split_literal (state := state_987564) 2
    state_987565 state_987672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987565
  · exact cover_987672
#print axioms cover_987564

def state_987563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 85)))
theorem cover_987563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987563 := by
  apply coveredState_split_literal (state := state_987563) 1
    state_987564 state_987681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987564
  · exact cover_987681
#print axioms cover_987563

def state_987555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 42)))
theorem cover_987555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987555 := by
  apply coveredState_split_literal (state := state_987555) 4
    state_987556 state_987563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987556
  · exact cover_987563
#print axioms cover_987555

def state_987539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 42)))
theorem cover_987539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987539 := by
  apply coveredState_split_literal (state := state_987539) 3
    state_987540 state_987555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987540
  · exact cover_987555
#print axioms cover_987539

def state_987525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 42)))
theorem cover_987525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987525 := by
  apply coveredState_split_literal (state := state_987525) 0
    state_987526 state_987539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987526
  · exact cover_987539
#print axioms cover_987525

def state_987401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 42)))
theorem cover_987401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987401 := by
  apply coveredState_split_literal (state := state_987401) 2
    state_987402 state_987525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987402
  · exact cover_987525
#print axioms cover_987401

def state_987400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 42)))
theorem cover_987400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987400 := by
  apply coveredState_split_literal (state := state_987400) 1
    state_987401 state_987686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987401
  · exact cover_987686
#print axioms cover_987400
end Mub6.Numerical.CircleFullD0.Forest
