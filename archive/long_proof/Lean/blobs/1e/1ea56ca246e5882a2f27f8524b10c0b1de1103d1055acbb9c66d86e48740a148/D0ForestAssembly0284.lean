import D0FullInterface
import D0ForestAssembly0283
import D0ForestChunk1090
import D0ForestChunk1091
import D0ForestChunk1092
import D0ForestChunk1093
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1562053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 90)))
theorem cover_1562053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562053 := by
  apply coveredState_split_literal (state := state_1562053) 2
    state_1562054 state_1562089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562054
  · exact cover_1562089
#print axioms cover_1562053

def state_1562052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 45)))
theorem cover_1562052 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562052 := by
  apply coveredState_split_literal (state := state_1562052) 4
    state_1562053 state_1562126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562053
  · exact cover_1562126
#print axioms cover_1562052

def state_1562051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 45)))
theorem cover_1562051 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562051 := by
  apply coveredState_split_literal (state := state_1562051) 0
    state_1562052 state_1562135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562052
  · exact cover_1562135
#print axioms cover_1562051

def state_1562037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 45)))
theorem cover_1562037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562037 := by
  apply coveredState_split_literal (state := state_1562037) 1
    state_1562038 state_1562051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562038
  · exact cover_1562051
#print axioms cover_1562037

def state_1562031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 45)))
theorem cover_1562031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562031 := by
  apply coveredState_split_literal (state := state_1562031) 3
    state_1562032 state_1562037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562032
  · exact cover_1562037
#print axioms cover_1562031

def state_1562030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 45)))
theorem cover_1562030 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562030 := by
  apply coveredState_split_literal (state := state_1562030) 2
    state_1562031 state_1562162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562031
  · exact cover_1562162
#print axioms cover_1562030

def state_1559966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
theorem cover_1559966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559966 := by
  apply coveredState_split_literal (state := state_1559966) 4
    state_1559967 state_1562030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559967
  · exact cover_1562030
#print axioms cover_1559966

def state_1559965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
theorem cover_1559965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559965 := by
  apply coveredState_split_literal (state := state_1559965) 0
    state_1559966 state_1562185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559966
  · exact cover_1562185
#print axioms cover_1559965

def state_1562275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 62) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 45)))
theorem cover_1562275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562275 := by
  apply coveredState_split_literal (state := state_1562275) 0
    state_1562276 state_1562311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562276
  · exact cover_1562311
#print axioms cover_1562275

def state_1562274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 45)))
theorem cover_1562274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562274 := by
  apply coveredState_split_literal (state := state_1562274) 1
    state_1562275 state_1562340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562275
  · exact cover_1562340
#print axioms cover_1562274

def state_1562266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 45)))
theorem cover_1562266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562266 := by
  apply coveredState_split_literal (state := state_1562266) 3
    state_1562267 state_1562274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562267
  · exact cover_1562274
#print axioms cover_1562266

def state_1562265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 45)))
theorem cover_1562265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562265 := by
  apply coveredState_split_literal (state := state_1562265) 2
    state_1562266 state_1562343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562266
  · exact cover_1562343
#print axioms cover_1562265

def state_1562231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
theorem cover_1562231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562231 := by
  apply coveredState_split_literal (state := state_1562231) 4
    state_1562232 state_1562265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562232
  · exact cover_1562265
#print axioms cover_1562231

def state_1562230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
theorem cover_1562230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562230 := by
  apply coveredState_split_literal (state := state_1562230) 0
    state_1562231 state_1562378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562231
  · exact cover_1562378
#print axioms cover_1562230

def state_1559964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
theorem cover_1559964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559964 := by
  apply coveredState_split_literal (state := state_1559964) 1
    state_1559965 state_1562230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559965
  · exact cover_1562230
#print axioms cover_1559964

def state_1562422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 88)))
theorem cover_1562422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562422 := by
  apply coveredState_split_literal (state := state_1562422) 0
    state_1562423 state_1562468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562423
  · exact cover_1562468
#print axioms cover_1562422

def state_1562406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 88)))
theorem cover_1562406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562406 := by
  apply coveredState_split_literal (state := state_1562406) 1
    state_1562407 state_1562422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562407
  · exact cover_1562422
#print axioms cover_1562406

def state_1562405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 42 else 88)))
theorem cover_1562405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562405 := by
  apply coveredState_split_literal (state := state_1562405) 3
    state_1562406 state_1562519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562406
  · exact cover_1562519
#print axioms cover_1562405

def state_1562395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 88)))
theorem cover_1562395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562395 := by
  apply coveredState_split_literal (state := state_1562395) 2
    state_1562396 state_1562405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562396
  · exact cover_1562405
#print axioms cover_1562395

def state_1562394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 44)))
theorem cover_1562394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562394 := by
  apply coveredState_split_literal (state := state_1562394) 4
    state_1562395 state_1562524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562395
  · exact cover_1562524
#print axioms cover_1562394

def state_1562393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 44)))
theorem cover_1562393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562393 := by
  apply coveredState_split_literal (state := state_1562393) 0
    state_1562394 state_1562549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562394
  · exact cover_1562549
#print axioms cover_1562393

def state_1562574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 88)))
theorem cover_1562574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562574 := by
  apply coveredState_split_literal (state := state_1562574) 0
    state_1562575 state_1562588
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562575
  · exact cover_1562588
#print axioms cover_1562574

def state_1562573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 88)))
theorem cover_1562573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562573 := by
  apply coveredState_split_literal (state := state_1562573) 1
    state_1562574 state_1562651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562574
  · exact cover_1562651
#print axioms cover_1562573

def state_1562572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 105 else (if j.val < 4 then 42 else 88)))
theorem cover_1562572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562572 := by
  apply coveredState_split_literal (state := state_1562572) 3
    state_1562573 state_1562652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562573
  · exact cover_1562652
#print axioms cover_1562572

def state_1562570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 88)))
theorem cover_1562570 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562570 := by
  apply coveredState_split_literal (state := state_1562570) 2
    state_1562571 state_1562572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562571
  · exact cover_1562572
#print axioms cover_1562570

def state_1562663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 89)))
theorem cover_1562663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562663 := by
  apply coveredState_split_literal (state := state_1562663) 0
    state_1562664 state_1562675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562664
  · exact cover_1562675
#print axioms cover_1562663

def state_1562662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 89)))
theorem cover_1562662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562662 := by
  apply coveredState_split_literal (state := state_1562662) 1
    state_1562663 state_1562732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562663
  · exact cover_1562732
#print axioms cover_1562662

def state_1562661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 105 else (if j.val < 4 then 42 else 89)))
theorem cover_1562661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562661 := by
  apply coveredState_split_literal (state := state_1562661) 3
    state_1562662 state_1562737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562662
  · exact cover_1562737
#print axioms cover_1562661

def state_1562653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 89)))
theorem cover_1562653 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562653 := by
  apply coveredState_split_literal (state := state_1562653) 2
    state_1562654 state_1562661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562654
  · exact cover_1562661
#print axioms cover_1562653

def state_1562569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 44)))
theorem cover_1562569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562569 := by
  apply coveredState_split_literal (state := state_1562569) 4
    state_1562570 state_1562653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562570
  · exact cover_1562653
#print axioms cover_1562569

def state_1562742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 44)))
theorem cover_1562742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562742 := by
  apply coveredState_split_literal (state := state_1562742) 4
    state_1562743 state_1562782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562743
  · exact cover_1562782
#print axioms cover_1562742

def state_1562568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 44)))
theorem cover_1562568 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562568 := by
  apply coveredState_split_literal (state := state_1562568) 0
    state_1562569 state_1562742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562569
  · exact cover_1562742
#print axioms cover_1562568
end Mub6.Numerical.CircleFullD0.Forest
