import D0FullInterface
import D0ForestAssembly0101
import D0ForestChunk0411
import D0ForestChunk0412
import D0ForestChunk0413
import D0ForestChunk0414
import D0ForestChunk0415
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1036302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 62)))
theorem cover_1036302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036302 := by
  apply coveredState_split_literal (state := state_1036302) 1
    state_1036303 state_1036326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036303
  · exact cover_1036326
#print axioms cover_1036302

def state_1036290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 62)))
theorem cover_1036290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036290 := by
  apply coveredState_split_literal (state := state_1036290) 0
    state_1036291 state_1036302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036291
  · exact cover_1036302
#print axioms cover_1036290

def state_1036289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 31)))
theorem cover_1036289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036289 := by
  apply coveredState_split_literal (state := state_1036289) 4
    state_1036290 state_1036449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036290
  · exact cover_1036449
#print axioms cover_1036289

def state_1036259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 31)))
theorem cover_1036259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036259 := by
  apply coveredState_split_literal (state := state_1036259) 3
    state_1036260 state_1036289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036260
  · exact cover_1036289
#print axioms cover_1036259

def state_1036258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 31)))
theorem cover_1036258 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036258 := by
  apply coveredState_split_literal (state := state_1036258) 2
    state_1036259 state_1036476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036259
  · exact cover_1036476
#print axioms cover_1036258

def state_1036527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 104 else (if j.val < 4 then 75 else 62)))
theorem cover_1036527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036527 := by
  apply coveredState_split_literal (state := state_1036527) 4
    state_1036528 state_1036545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036528
  · exact cover_1036545
#print axioms cover_1036527

def state_1036521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 104 else (if j.val < 4 then 37 else 62)))
theorem cover_1036521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036521 := by
  apply coveredState_split_literal (state := state_1036521) 3
    state_1036522 state_1036527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036522
  · exact cover_1036527
#print axioms cover_1036521

def state_1036520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 62)))
theorem cover_1036520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036520 := by
  apply coveredState_split_literal (state := state_1036520) 2
    state_1036521 state_1036592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036521
  · exact cover_1036592
#print axioms cover_1036520

def state_1036519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 62)))
theorem cover_1036519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036519 := by
  apply coveredState_split_literal (state := state_1036519) 1
    state_1036520 state_1036593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036520
  · exact cover_1036593
#print axioms cover_1036519

def state_1036501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 62)))
theorem cover_1036501 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036501 := by
  apply coveredState_split_literal (state := state_1036501) 0
    state_1036502 state_1036519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036502
  · exact cover_1036519
#print axioms cover_1036501

def state_1036599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 63)))
theorem cover_1036599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036599 := by
  apply coveredState_split_literal (state := state_1036599) 2
    state_1036600 state_1036663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036600
  · exact cover_1036663
#print axioms cover_1036599

def state_1036598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 63)))
theorem cover_1036598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036598 := by
  apply coveredState_split_literal (state := state_1036598) 1
    state_1036599 state_1036664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036599
  · exact cover_1036664
#print axioms cover_1036598

def state_1036594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 63)))
theorem cover_1036594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036594 := by
  apply coveredState_split_literal (state := state_1036594) 0
    state_1036595 state_1036598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036595
  · exact cover_1036598
#print axioms cover_1036594

def state_1036500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 31)))
theorem cover_1036500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036500 := by
  apply coveredState_split_literal (state := state_1036500) 4
    state_1036501 state_1036594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036501
  · exact cover_1036594
#print axioms cover_1036500

def state_1036478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 31)))
theorem cover_1036478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036478 := by
  apply coveredState_split_literal (state := state_1036478) 3
    state_1036479 state_1036500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036479
  · exact cover_1036500
#print axioms cover_1036478

def state_1036477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 31)))
theorem cover_1036477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036477 := by
  apply coveredState_split_literal (state := state_1036477) 2
    state_1036478 state_1036675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036478
  · exact cover_1036675
#print axioms cover_1036477

def state_1036257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 31)))
theorem cover_1036257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036257 := by
  apply coveredState_split_literal (state := state_1036257) 1
    state_1036258 state_1036477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036258
  · exact cover_1036477
#print axioms cover_1036257

def state_1036249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 31)))
theorem cover_1036249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036249 := by
  apply coveredState_split_literal (state := state_1036249) 0
    state_1036250 state_1036257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036250
  · exact cover_1036257
#print axioms cover_1036249

def state_1035931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 15)))
theorem cover_1035931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035931 := by
  apply coveredState_split_literal (state := state_1035931) 4
    state_1035932 state_1036249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035932
  · exact cover_1036249
#print axioms cover_1035931

def state_1036698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 30)))
theorem cover_1036698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036698 := by
  apply coveredState_split_literal (state := state_1036698) 2
    state_1036699 state_1036760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036699
  · exact cover_1036760
#print axioms cover_1036698

def state_1036697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 30)))
theorem cover_1036697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036697 := by
  apply coveredState_split_literal (state := state_1036697) 1
    state_1036698 state_1036789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036698
  · exact cover_1036789
#print axioms cover_1036697

def state_1036679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 30)))
theorem cover_1036679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036679 := by
  apply coveredState_split_literal (state := state_1036679) 0
    state_1036680 state_1036697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036680
  · exact cover_1036697
#print axioms cover_1036679

def state_1036890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 62)))
theorem cover_1036890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036890 := by
  apply coveredState_split_literal (state := state_1036890) 2
    state_1036891 state_1036952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036891
  · exact cover_1036952
#print axioms cover_1036890

def state_1036868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 62)))
theorem cover_1036868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036868 := by
  apply coveredState_split_literal (state := state_1036868) 1
    state_1036869 state_1036890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036869
  · exact cover_1036890
#print axioms cover_1036868

def state_1036844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 62)))
theorem cover_1036844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036844 := by
  apply coveredState_split_literal (state := state_1036844) 0
    state_1036845 state_1036868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036845
  · exact cover_1036868
#print axioms cover_1036844

def state_1036843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 31)))
theorem cover_1036843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036843 := by
  apply coveredState_split_literal (state := state_1036843) 4
    state_1036844 state_1036965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036844
  · exact cover_1036965
#print axioms cover_1036843

def state_1036842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 19 else 31)))
theorem cover_1036842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036842 := by
  apply coveredState_split_literal (state := state_1036842) 3
    state_1036843 state_1036994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036843
  · exact cover_1036994
#print axioms cover_1036842

def state_1036841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
theorem cover_1036841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036841 := by
  apply coveredState_split_literal (state := state_1036841) 2
    state_1036842 state_1037001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1036842
  · exact cover_1037001
#print axioms cover_1036841

def state_1037026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 62)))
theorem cover_1037026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037026 := by
  apply coveredState_split_literal (state := state_1037026) 2
    state_1037027 state_1037084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037027
  · exact cover_1037084
#print axioms cover_1037026

def state_1037025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 62)))
theorem cover_1037025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037025 := by
  apply coveredState_split_literal (state := state_1037025) 1
    state_1037026 state_1037095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037026
  · exact cover_1037095
#print axioms cover_1037025

def state_1037013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 62)))
theorem cover_1037013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037013 := by
  apply coveredState_split_literal (state := state_1037013) 0
    state_1037014 state_1037025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037014
  · exact cover_1037025
#print axioms cover_1037013

def state_1037135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 63)))
theorem cover_1037135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037135 := by
  apply coveredState_split_literal (state := state_1037135) 2
    state_1037136 state_1037197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037136
  · exact cover_1037197
#print axioms cover_1037135
end Mub6.Numerical.CircleFullD0.Forest
