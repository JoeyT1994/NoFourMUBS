import D0FullInterface
import D0ForestAssembly0059
import D0ForestAssembly0061
import D0ForestAssembly0062
import D0ForestAssembly0063
import D0ForestChunk0257
import D0ForestChunk0258
import D0ForestChunk0259
import D0ForestChunk0260
import D0ForestChunk0261
import D0ForestChunk0262
import D0ForestChunk0263
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_999462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 43)))
theorem cover_999462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999462 := by
  apply coveredState_split_literal (state := state_999462) 2
    state_999463 state_999498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999463
  · exact cover_999498
#print axioms cover_999462

def state_999382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 21)))
theorem cover_999382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999382 := by
  apply coveredState_split_literal (state := state_999382) 4
    state_999383 state_999462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999383
  · exact cover_999462
#print axioms cover_999382

def state_999381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 21)))
theorem cover_999381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999381 := by
  apply coveredState_split_literal (state := state_999381) 0
    state_999382 state_999759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999382
  · exact cover_999759
#print axioms cover_999381

def state_999773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 42)))
theorem cover_999773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999773 := by
  apply coveredState_split_literal (state := state_999773) 1
    state_999774 state_999835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999774
  · exact cover_999835
#print axioms cover_999773

def state_999772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 42)))
theorem cover_999772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999772 := by
  apply coveredState_split_literal (state := state_999772) 2
    state_999773 state_999844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999773
  · exact cover_999844
#print axioms cover_999772

def state_999915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 43)))
theorem cover_999915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999915 := by
  apply coveredState_split_literal (state := state_999915) 0
    state_999916 state_999969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999916
  · exact cover_999969
#print axioms cover_999915

def state_999863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 43)))
theorem cover_999863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999863 := by
  apply coveredState_split_literal (state := state_999863) 3
    state_999864 state_999915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999864
  · exact cover_999915
#print axioms cover_999863

def state_1000008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 43)))
theorem cover_1000008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000008 := by
  apply coveredState_split_literal (state := state_1000008) 0
    state_1000009 state_1000066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000009
  · exact cover_1000066
#print axioms cover_1000008

def state_999980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 43)))
theorem cover_999980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999980 := by
  apply coveredState_split_literal (state := state_999980) 3
    state_999981 state_1000008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999981
  · exact cover_1000008
#print axioms cover_999980

def state_999862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 43)))
theorem cover_999862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999862 := by
  apply coveredState_split_literal (state := state_999862) 1
    state_999863 state_999980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999863
  · exact cover_999980
#print axioms cover_999862

def state_999861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 43)))
theorem cover_999861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999861 := by
  apply coveredState_split_literal (state := state_999861) 2
    state_999862 state_1000091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999862
  · exact cover_1000091
#print axioms cover_999861

def state_999771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 21)))
theorem cover_999771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999771 := by
  apply coveredState_split_literal (state := state_999771) 4
    state_999772 state_999861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999772
  · exact cover_999861
#print axioms cover_999771

def state_999770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 21)))
theorem cover_999770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999770 := by
  apply coveredState_split_literal (state := state_999770) 0
    state_999771 state_1000128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999771
  · exact cover_1000128
#print axioms cover_999770

def state_999380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 21)))
theorem cover_999380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999380 := by
  apply coveredState_split_literal (state := state_999380) 2
    state_999381 state_999770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999381
  · exact cover_999770
#print axioms cover_999380

def state_999352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 10)))
theorem cover_999352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999352 := by
  apply coveredState_split_literal (state := state_999352) 4
    state_999353 state_999380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999353
  · exact cover_999380
#print axioms cover_999352

def state_997972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_997972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997972 := by
  apply coveredState_split_literal (state := state_997972) 3
    state_997973 state_999352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997973
  · exact cover_999352
#print axioms cover_997972

def state_997590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_997590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997590 := by
  apply coveredState_split_literal (state := state_997590) 1
    state_997591 state_997972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997591
  · exact cover_997972
#print axioms cover_997590

def state_995096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_995096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995096 := by
  apply coveredState_split_literal (state := state_995096) 0
    state_995097 state_997590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_995097
  · exact cover_997590
#print axioms cover_995096

def state_992438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
theorem cover_992438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992438 := by
  apply coveredState_split_literal (state := state_992438) 2
    state_992439 state_995096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992439
  · exact cover_995096
#print axioms cover_992438

def state_1000276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 88)))
theorem cover_1000276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000276 := by
  apply coveredState_split_literal (state := state_1000276) 1
    state_1000277 state_1000284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000277
  · exact cover_1000284
#print axioms cover_1000276

def state_1000275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 88)))
theorem cover_1000275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000275 := by
  apply coveredState_split_literal (state := state_1000275) 3
    state_1000276 state_1000341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000276
  · exact cover_1000341
#print axioms cover_1000275

def state_1000274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 44)))
theorem cover_1000274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000274 := by
  apply coveredState_split_literal (state := state_1000274) 4
    state_1000275 state_1000382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000275
  · exact cover_1000382
#print axioms cover_1000274

def state_1000252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 44)))
theorem cover_1000252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000252 := by
  apply coveredState_split_literal (state := state_1000252) 0
    state_1000253 state_1000274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000253
  · exact cover_1000274
#print axioms cover_1000252

def state_1000236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 44)))
theorem cover_1000236 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000236 := by
  apply coveredState_split_literal (state := state_1000236) 2
    state_1000237 state_1000252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000237
  · exact cover_1000252
#print axioms cover_1000236

def state_1000470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 220) else (if j.val < 3 then 71 else (if j.val < 4 then 208 else 177)))
theorem cover_1000470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000470 := by
  apply coveredState_split_literal (state := state_1000470) 2
    state_1000471 state_1000514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000471
  · exact cover_1000514
#print axioms cover_1000470

def state_1000469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 208 else 177)))
theorem cover_1000469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000469 := by
  apply coveredState_split_literal (state := state_1000469) 1
    state_1000470 state_1000547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000470
  · exact cover_1000547
#print axioms cover_1000469

def state_1000560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 209 else 177)))
theorem cover_1000560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000560 := by
  apply coveredState_split_literal (state := state_1000560) 1
    state_1000561 state_1000620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000561
  · exact cover_1000620
#print axioms cover_1000560

def state_1000468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 177)))
theorem cover_1000468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000468 := by
  apply coveredState_split_literal (state := state_1000468) 3
    state_1000469 state_1000560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000469
  · exact cover_1000560
#print axioms cover_1000468

def state_1000466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 88)))
theorem cover_1000466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000466 := by
  apply coveredState_split_literal (state := state_1000466) 4
    state_1000467 state_1000468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000467
  · exact cover_1000468
#print axioms cover_1000466

def state_1000456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 88)))
theorem cover_1000456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000456 := by
  apply coveredState_split_literal (state := state_1000456) 0
    state_1000457 state_1000466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000457
  · exact cover_1000466
#print axioms cover_1000456

def state_1000430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 88)))
theorem cover_1000430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000430 := by
  apply coveredState_split_literal (state := state_1000430) 2
    state_1000431 state_1000456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000431
  · exact cover_1000456
#print axioms cover_1000430

def state_1000429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 88)))
theorem cover_1000429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000429 := by
  apply coveredState_split_literal (state := state_1000429) 1
    state_1000430 state_1000631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000430
  · exact cover_1000631
#print axioms cover_1000429
end Mub6.Numerical.CircleFullD0.Forest
