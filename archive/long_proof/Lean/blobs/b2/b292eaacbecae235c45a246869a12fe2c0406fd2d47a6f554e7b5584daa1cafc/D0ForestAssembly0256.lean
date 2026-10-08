import D0FullInterface
import D0ForestAssembly0251
import D0ForestAssembly0254
import D0ForestAssembly0255
import D0ForestChunk0974
import D0ForestChunk0979
import D0ForestChunk0980
import D0ForestChunk0981
import D0ForestChunk0982
import D0ForestChunk0983
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1535643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 9)))
theorem cover_1535643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535643 := by
  apply coveredState_split_literal (state := state_1535643) 4
    state_1535644 state_1535879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535644
  · exact cover_1535879
#print axioms cover_1535643

def state_1535635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 9)))
theorem cover_1535635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535635 := by
  apply coveredState_split_literal (state := state_1535635) 3
    state_1535636 state_1535643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535636
  · exact cover_1535643
#print axioms cover_1535635

def state_1535634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
theorem cover_1535634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535634 := by
  apply coveredState_split_literal (state := state_1535634) 2
    state_1535635 state_1535904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535635
  · exact cover_1535904
#print axioms cover_1535634

def state_1535572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
theorem cover_1535572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535572 := by
  apply coveredState_split_literal (state := state_1535572) 1
    state_1535573 state_1535634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535573
  · exact cover_1535634
#print axioms cover_1535572

def state_1535571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
theorem cover_1535571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535571 := by
  apply coveredState_split_literal (state := state_1535571) 0
    state_1535572 state_1535915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1535572
  · exact cover_1535915
#print axioms cover_1535571

def state_1534437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 4)))
theorem cover_1534437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534437 := by
  apply coveredState_split_literal (state := state_1534437) 4
    state_1534438 state_1535571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534438
  · exact cover_1535571
#print axioms cover_1534437

def state_1534423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_1534423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534423 := by
  apply coveredState_split_literal (state := state_1534423) 3
    state_1534424 state_1534437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534424
  · exact cover_1534437
#print axioms cover_1534423

def state_1531357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_1531357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531357 := by
  apply coveredState_split_literal (state := state_1531357) 2
    state_1531358 state_1534423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531358
  · exact cover_1534423
#print axioms cover_1531357

def state_1530907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_1530907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530907 := by
  apply coveredState_split_literal (state := state_1530907) 1
    state_1530908 state_1531357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530908
  · exact cover_1531357
#print axioms cover_1530907

def state_1530906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_1530906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530906 := by
  apply coveredState_split_literal (state := state_1530906) 0
    state_1530907 state_1535970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530907
  · exact cover_1535970
#print axioms cover_1530906

def state_1536018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 10)))
theorem cover_1536018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536018 := by
  apply coveredState_split_literal (state := state_1536018) 3
    state_1536019 state_1536028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536019
  · exact cover_1536028
#print axioms cover_1536018

def state_1536017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 5)))
theorem cover_1536017 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536017 := by
  apply coveredState_split_literal (state := state_1536017) 4
    state_1536018 state_1536083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536018
  · exact cover_1536083
#print axioms cover_1536017

def state_1536016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_1536016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536016 := by
  apply coveredState_split_literal (state := state_1536016) 2
    state_1536017 state_1536090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536017
  · exact cover_1536090
#print axioms cover_1536016

def state_1536010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_1536010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536010 := by
  apply coveredState_split_literal (state := state_1536010) 1
    state_1536011 state_1536016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536011
  · exact cover_1536016
#print axioms cover_1536010

def state_1536009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_1536009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536009 := by
  apply coveredState_split_literal (state := state_1536009) 0
    state_1536010 state_1536093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536010
  · exact cover_1536093
#print axioms cover_1536009

def state_1530905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_1530905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530905 := by
  apply coveredState_split_literal (state := state_1530905) 4
    state_1530906 state_1536009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530906
  · exact cover_1536009
#print axioms cover_1530905

def state_1536251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 18)))
theorem cover_1536251 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536251 := by
  apply coveredState_split_literal (state := state_1536251) 4
    state_1536252 state_1536273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536252
  · exact cover_1536273
#print axioms cover_1536251

def state_1536243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 18)))
theorem cover_1536243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536243 := by
  apply coveredState_split_literal (state := state_1536243) 2
    state_1536244 state_1536251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536244
  · exact cover_1536251
#print axioms cover_1536243

def state_1536223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 18)))
theorem cover_1536223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536223 := by
  apply coveredState_split_literal (state := state_1536223) 0
    state_1536224 state_1536243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536224
  · exact cover_1536243
#print axioms cover_1536223

def state_1536351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 38)))
theorem cover_1536351 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536351 := by
  apply coveredState_split_literal (state := state_1536351) 1
    state_1536352 state_1536363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536352
  · exact cover_1536363
#print axioms cover_1536351

def state_1536350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 19)))
theorem cover_1536350 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536350 := by
  apply coveredState_split_literal (state := state_1536350) 4
    state_1536351 state_1536426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536351
  · exact cover_1536426
#print axioms cover_1536350

def state_1536338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 19)))
theorem cover_1536338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536338 := by
  apply coveredState_split_literal (state := state_1536338) 2
    state_1536339 state_1536350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536339
  · exact cover_1536350
#print axioms cover_1536338

def state_1536322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 19)))
theorem cover_1536322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536322 := by
  apply coveredState_split_literal (state := state_1536322) 0
    state_1536323 state_1536338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536323
  · exact cover_1536338
#print axioms cover_1536322

def state_1536222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 9)))
theorem cover_1536222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536222 := by
  apply coveredState_split_literal (state := state_1536222) 4
    state_1536223 state_1536322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536223
  · exact cover_1536322
#print axioms cover_1536222

def state_1536221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 9)))
theorem cover_1536221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536221 := by
  apply coveredState_split_literal (state := state_1536221) 3
    state_1536222 state_1536453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536222
  · exact cover_1536453
#print axioms cover_1536221

def state_1536205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 9)))
theorem cover_1536205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536205 := by
  apply coveredState_split_literal (state := state_1536205) 1
    state_1536206 state_1536221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536206
  · exact cover_1536221
#print axioms cover_1536205

def state_1536193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 9)))
theorem cover_1536193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536193 := by
  apply coveredState_split_literal (state := state_1536193) 2
    state_1536194 state_1536205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536194
  · exact cover_1536205
#print axioms cover_1536193

def state_1536192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 9)))
theorem cover_1536192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536192 := by
  apply coveredState_split_literal (state := state_1536192) 0
    state_1536193 state_1536458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536193
  · exact cover_1536458
#print axioms cover_1536192

def state_1536128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 4)))
theorem cover_1536128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536128 := by
  apply coveredState_split_literal (state := state_1536128) 4
    state_1536129 state_1536192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536129
  · exact cover_1536192
#print axioms cover_1536128

def state_1536127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 4)))
theorem cover_1536127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536127 := by
  apply coveredState_split_literal (state := state_1536127) 3
    state_1536128 state_1536489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536128
  · exact cover_1536489
#print axioms cover_1536127

def state_1536537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 17)))
theorem cover_1536537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536537 := by
  apply coveredState_split_literal (state := state_1536537) 0
    state_1536538 state_1536559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536538
  · exact cover_1536559
#print axioms cover_1536537

def state_1536531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 8)))
theorem cover_1536531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536531 := by
  apply coveredState_split_literal (state := state_1536531) 4
    state_1536532 state_1536537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536532
  · exact cover_1536537
#print axioms cover_1536531
end Mub6.Numerical.CircleFullD0.Forest
