import D0FullInterface
import D0ForestAssembly0324
import D0ForestChunk1258
import D0ForestChunk1259
import D0ForestChunk1260
import D0ForestChunk1261
import D0ForestChunk1262
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1602485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 29 else 49)))
theorem cover_1602485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602485 := by
  apply coveredState_split_literal (state := state_1602485) 3
    state_1602486 state_1602519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602486
  · exact cover_1602519
#print axioms cover_1602485

def state_1602243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 49)))
theorem cover_1602243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602243 := by
  apply coveredState_split_literal (state := state_1602243) 2
    state_1602244 state_1602485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602244
  · exact cover_1602485
#print axioms cover_1602243

def state_1602818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 99)))
theorem cover_1602818 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602818 := by
  apply coveredState_split_literal (state := state_1602818) 1
    state_1602819 state_1602858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602819
  · exact cover_1602858
#print axioms cover_1602818

def state_1602784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 99)))
theorem cover_1602784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602784 := by
  apply coveredState_split_literal (state := state_1602784) 0
    state_1602785 state_1602818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602785
  · exact cover_1602818
#print axioms cover_1602784

def state_1602744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 49)))
theorem cover_1602744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602744 := by
  apply coveredState_split_literal (state := state_1602744) 4
    state_1602745 state_1602784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602745
  · exact cover_1602784
#print axioms cover_1602744

def state_1602692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 29 else 49)))
theorem cover_1602692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602692 := by
  apply coveredState_split_literal (state := state_1602692) 3
    state_1602693 state_1602744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602693
  · exact cover_1602744
#print axioms cover_1602692

def state_1602678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 49)))
theorem cover_1602678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602678 := by
  apply coveredState_split_literal (state := state_1602678) 2
    state_1602679 state_1602692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602679
  · exact cover_1602692
#print axioms cover_1602678

def state_1602242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 49)))
theorem cover_1602242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602242 := by
  apply coveredState_split_literal (state := state_1602242) 1
    state_1602243 state_1602678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602243
  · exact cover_1602678
#print axioms cover_1602242

def state_1602126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 49)))
theorem cover_1602126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602126 := by
  apply coveredState_split_literal (state := state_1602126) 0
    state_1602127 state_1602242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602127
  · exact cover_1602242
#print axioms cover_1602126

def state_1602038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 24)))
theorem cover_1602038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602038 := by
  apply coveredState_split_literal (state := state_1602038) 4
    state_1602039 state_1602126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602039
  · exact cover_1602126
#print axioms cover_1602038

def state_1601958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 24)))
theorem cover_1601958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601958 := by
  apply coveredState_split_literal (state := state_1601958) 3
    state_1601959 state_1602038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601959
  · exact cover_1602038
#print axioms cover_1601958

def state_1602895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 24)))
theorem cover_1602895 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602895 := by
  apply coveredState_split_literal (state := state_1602895) 3
    state_1602896 state_1602903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602896
  · exact cover_1602903
#print axioms cover_1602895

def state_1601957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1601957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601957 := by
  apply coveredState_split_literal (state := state_1601957) 2
    state_1601958 state_1602895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601958
  · exact cover_1602895
#print axioms cover_1601957

def state_1601483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1601483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601483 := by
  apply coveredState_split_literal (state := state_1601483) 1
    state_1601484 state_1601957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601484
  · exact cover_1601957
#print axioms cover_1601483

def state_1601399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1601399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601399 := by
  apply coveredState_split_literal (state := state_1601399) 0
    state_1601400 state_1601483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601400
  · exact cover_1601483
#print axioms cover_1601399

def state_1602967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 25)))
theorem cover_1602967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602967 := by
  apply coveredState_split_literal (state := state_1602967) 3
    state_1602968 state_1603009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602968
  · exact cover_1603009
#print axioms cover_1602967

def state_1602966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1602966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602966 := by
  apply coveredState_split_literal (state := state_1602966) 2
    state_1602967 state_1603038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602967
  · exact cover_1603038
#print axioms cover_1602966

def state_1602965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1602965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602965 := by
  apply coveredState_split_literal (state := state_1602965) 1
    state_1602966 state_1603043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602966
  · exact cover_1603043
#print axioms cover_1602965

def state_1603094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 57 else 50)))
theorem cover_1603094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603094 := by
  apply coveredState_split_literal (state := state_1603094) 1
    state_1603095 state_1603124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603095
  · exact cover_1603124
#print axioms cover_1603094

def state_1603076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 28 else 50)))
theorem cover_1603076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603076 := by
  apply coveredState_split_literal (state := state_1603076) 3
    state_1603077 state_1603094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603077
  · exact cover_1603094
#print axioms cover_1603076

def state_1603075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 50)))
theorem cover_1603075 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603075 := by
  apply coveredState_split_literal (state := state_1603075) 2
    state_1603076 state_1603173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603076
  · exact cover_1603173
#print axioms cover_1603075

def state_1603074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 50)))
theorem cover_1603074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603074 := by
  apply coveredState_split_literal (state := state_1603074) 0
    state_1603075 state_1603180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603075
  · exact cover_1603180
#print axioms cover_1603074

def state_1603073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 25)))
theorem cover_1603073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603073 := by
  apply coveredState_split_literal (state := state_1603073) 4
    state_1603074 state_1603203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603074
  · exact cover_1603203
#print axioms cover_1603073

def state_1603324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 58 else 100)))
theorem cover_1603324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603324 := by
  apply coveredState_split_literal (state := state_1603324) 3
    state_1603325 state_1603356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603325
  · exact cover_1603356
#print axioms cover_1603324

def state_1603316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 58 else 100)))
theorem cover_1603316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603316 := by
  apply coveredState_split_literal (state := state_1603316) 0
    state_1603317 state_1603324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603317
  · exact cover_1603324
#print axioms cover_1603316

def state_1603315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 100)))
theorem cover_1603315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603315 := by
  apply coveredState_split_literal (state := state_1603315) 2
    state_1603316 state_1603399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603316
  · exact cover_1603399
#print axioms cover_1603315

def state_1603314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 50)))
theorem cover_1603314 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603314 := by
  apply coveredState_split_literal (state := state_1603314) 4
    state_1603315 state_1603414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603315
  · exact cover_1603414
#print axioms cover_1603314

def state_1603268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 50)))
theorem cover_1603268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603268 := by
  apply coveredState_split_literal (state := state_1603268) 1
    state_1603269 state_1603314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603269
  · exact cover_1603314
#print axioms cover_1603268

def state_1603470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 100)))
theorem cover_1603470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603470 := by
  apply coveredState_split_literal (state := state_1603470) 2
    state_1603471 state_1603526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603471
  · exact cover_1603526
#print axioms cover_1603470

def state_1603469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 50)))
theorem cover_1603469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603469 := by
  apply coveredState_split_literal (state := state_1603469) 4
    state_1603470 state_1603535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603470
  · exact cover_1603535
#print axioms cover_1603469

def state_1603443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 50)))
theorem cover_1603443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603443 := by
  apply coveredState_split_literal (state := state_1603443) 1
    state_1603444 state_1603469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603444
  · exact cover_1603469
#print axioms cover_1603443

def state_1603267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 29 else 50)))
theorem cover_1603267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603267 := by
  apply coveredState_split_literal (state := state_1603267) 3
    state_1603268 state_1603443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603268
  · exact cover_1603443
#print axioms cover_1603267
end Mub6.Numerical.CircleFullD0.Forest
