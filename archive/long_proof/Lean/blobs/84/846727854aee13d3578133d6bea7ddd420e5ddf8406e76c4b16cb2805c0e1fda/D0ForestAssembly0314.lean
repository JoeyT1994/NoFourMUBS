import D0FullInterface
import D0ForestAssembly0313
import D0ForestChunk1211
import D0ForestChunk1212
import D0ForestChunk1213
import D0ForestChunk1214
import D0ForestChunk1215
import D0ForestChunk1216
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1591310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 25)))
theorem cover_1591310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591310 := by
  apply coveredState_split_literal (state := state_1591310) 4
    state_1591311 state_1591362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591311
  · exact cover_1591362
#print axioms cover_1591310

def state_1591304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 25)))
theorem cover_1591304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591304 := by
  apply coveredState_split_literal (state := state_1591304) 2
    state_1591305 state_1591310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591305
  · exact cover_1591310
#print axioms cover_1591304

def state_1591303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 25)))
theorem cover_1591303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591303 := by
  apply coveredState_split_literal (state := state_1591303) 3
    state_1591304 state_1591387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591304
  · exact cover_1591387
#print axioms cover_1591303

def state_1591117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 25)))
theorem cover_1591117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591117 := by
  apply coveredState_split_literal (state := state_1591117) 1
    state_1591118 state_1591303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591118
  · exact cover_1591303
#print axioms cover_1591117

def state_1591393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 25)))
theorem cover_1591393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591393 := by
  apply coveredState_split_literal (state := state_1591393) 3
    state_1591394 state_1591453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591394
  · exact cover_1591453
#print axioms cover_1591393

def state_1591392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 25)))
theorem cover_1591392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591392 := by
  apply coveredState_split_literal (state := state_1591392) 1
    state_1591393 state_1591468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591393
  · exact cover_1591468
#print axioms cover_1591392

def state_1591116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 25)))
theorem cover_1591116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591116 := by
  apply coveredState_split_literal (state := state_1591116) 0
    state_1591117 state_1591392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591117
  · exact cover_1591392
#print axioms cover_1591116

def state_1590970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 12)))
theorem cover_1590970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590970 := by
  apply coveredState_split_literal (state := state_1590970) 4
    state_1590971 state_1591116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590971
  · exact cover_1591116
#print axioms cover_1590970

def state_1591526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 49)))
theorem cover_1591526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591526 := by
  apply coveredState_split_literal (state := state_1591526) 2
    state_1591527 state_1591582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591527
  · exact cover_1591582
#print axioms cover_1591526

def state_1591512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 24)))
theorem cover_1591512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591512 := by
  apply coveredState_split_literal (state := state_1591512) 4
    state_1591513 state_1591526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591513
  · exact cover_1591526
#print axioms cover_1591512

def state_1591511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
theorem cover_1591511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591511 := by
  apply coveredState_split_literal (state := state_1591511) 3
    state_1591512 state_1591591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591512
  · exact cover_1591591
#print axioms cover_1591511

def state_1591497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
theorem cover_1591497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591497 := by
  apply coveredState_split_literal (state := state_1591497) 1
    state_1591498 state_1591511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591498
  · exact cover_1591511
#print axioms cover_1591497

def state_1591737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 49)))
theorem cover_1591737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591737 := by
  apply coveredState_split_literal (state := state_1591737) 0
    state_1591738 state_1591801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591738
  · exact cover_1591801
#print axioms cover_1591737

def state_1591838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 49)))
theorem cover_1591838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591838 := by
  apply coveredState_split_literal (state := state_1591838) 0
    state_1591839 state_1591860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591839
  · exact cover_1591860
#print axioms cover_1591838

def state_1591736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 49)))
theorem cover_1591736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591736 := by
  apply coveredState_split_literal (state := state_1591736) 2
    state_1591737 state_1591838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591737
  · exact cover_1591838
#print axioms cover_1591736

def state_1591710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 24)))
theorem cover_1591710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591710 := by
  apply coveredState_split_literal (state := state_1591710) 4
    state_1591711 state_1591736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591711
  · exact cover_1591736
#print axioms cover_1591710

def state_1591650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
theorem cover_1591650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591650 := by
  apply coveredState_split_literal (state := state_1591650) 3
    state_1591651 state_1591710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591651
  · exact cover_1591710
#print axioms cover_1591650

def state_1591620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
theorem cover_1591620 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591620 := by
  apply coveredState_split_literal (state := state_1591620) 1
    state_1591621 state_1591650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591621
  · exact cover_1591650
#print axioms cover_1591620

def state_1591496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
theorem cover_1591496 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591496 := by
  apply coveredState_split_literal (state := state_1591496) 0
    state_1591497 state_1591620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591497
  · exact cover_1591620
#print axioms cover_1591496

def state_1591908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 50)))
theorem cover_1591908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591908 := by
  apply coveredState_split_literal (state := state_1591908) 3
    state_1591909 state_1591962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591909
  · exact cover_1591962
#print axioms cover_1591908

def state_1592065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 37) else (if j.val < 3 then 100 else (if j.val < 4 then 56 else 51)))
theorem cover_1592065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592065 := by
  apply coveredState_split_literal (state := state_1592065) 4
    state_1592066 state_1592119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592066
  · exact cover_1592119
#print axioms cover_1592065

def state_1592064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 37) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 51)))
theorem cover_1592064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592064 := by
  apply coveredState_split_literal (state := state_1592064) 2
    state_1592065 state_1592136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592065
  · exact cover_1592136
#print axioms cover_1592064

def state_1592014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 37) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 51)))
theorem cover_1592014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592014 := by
  apply coveredState_split_literal (state := state_1592014) 0
    state_1592015 state_1592064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592015
  · exact cover_1592064
#print axioms cover_1592014

def state_1591990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 51)))
theorem cover_1591990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591990 := by
  apply coveredState_split_literal (state := state_1591990) 1
    state_1591991 state_1592014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591991
  · exact cover_1592014
#print axioms cover_1591990

def state_1591989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 51)))
theorem cover_1591989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591989 := by
  apply coveredState_split_literal (state := state_1591989) 3
    state_1591990 state_1592163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591990
  · exact cover_1592163
#print axioms cover_1591989

def state_1591907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 25)))
theorem cover_1591907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591907 := by
  apply coveredState_split_literal (state := state_1591907) 4
    state_1591908 state_1591989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591908
  · exact cover_1591989
#print axioms cover_1591907

def state_1591906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 25)))
theorem cover_1591906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591906 := by
  apply coveredState_split_literal (state := state_1591906) 2
    state_1591907 state_1592210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591907
  · exact cover_1592210
#print axioms cover_1591906

def state_1591905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1591905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591905 := by
  apply coveredState_split_literal (state := state_1591905) 3
    state_1591906 state_1592231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591906
  · exact cover_1592231
#print axioms cover_1591905

def state_1592296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 100 else (if j.val < 4 then 56 else 50)))
theorem cover_1592296 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592296 := by
  apply coveredState_split_literal (state := state_1592296) 4
    state_1592297 state_1592306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592297
  · exact cover_1592306
#print axioms cover_1592296

def state_1592295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 50)))
theorem cover_1592295 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592295 := by
  apply coveredState_split_literal (state := state_1592295) 2
    state_1592296 state_1592363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592296
  · exact cover_1592363
#print axioms cover_1592295

def state_1592253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 50)))
theorem cover_1592253 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592253 := by
  apply coveredState_split_literal (state := state_1592253) 0
    state_1592254 state_1592295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592254
  · exact cover_1592295
#print axioms cover_1592253

def state_1592388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 50)))
theorem cover_1592388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592388 := by
  apply coveredState_split_literal (state := state_1592388) 0
    state_1592389 state_1592398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592389
  · exact cover_1592398
#print axioms cover_1592388
end Mub6.Numerical.CircleFullD0.Forest
