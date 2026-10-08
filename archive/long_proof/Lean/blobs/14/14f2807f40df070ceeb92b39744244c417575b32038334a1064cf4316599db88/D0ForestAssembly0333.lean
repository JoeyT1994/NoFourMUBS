import D0FullInterface
import D0ForestAssembly0332
import D0ForestChunk1285
import D0ForestChunk1286
import D0ForestChunk1290
import D0ForestChunk1291
import D0ForestChunk1292
import D0ForestChunk1293
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1609184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 12)))
theorem cover_1609184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609184 := by
  apply coveredState_split_literal (state := state_1609184) 4
    state_1609185 state_1609754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609185
  · exact cover_1609754
#print axioms cover_1609184

def state_1609164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1609164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609164 := by
  apply coveredState_split_literal (state := state_1609164) 2
    state_1609165 state_1609184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609165
  · exact cover_1609184
#print axioms cover_1609164

def state_1609163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1609163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609163 := by
  apply coveredState_split_literal (state := state_1609163) 0
    state_1609164 state_1610187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609164
  · exact cover_1610187
#print axioms cover_1609163

def state_1609103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1609103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609103 := by
  apply coveredState_split_literal (state := state_1609103) 3
    state_1609104 state_1609163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609104
  · exact cover_1609163
#print axioms cover_1609103

def state_1609102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_1609102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609102 := by
  apply coveredState_split_literal (state := state_1609102) 4
    state_1609103 state_1610202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609103
  · exact cover_1610202
#print axioms cover_1609102

def state_1610217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 24)))
theorem cover_1610217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610217 := by
  apply coveredState_split_literal (state := state_1610217) 4
    state_1610218 state_1610229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610218
  · exact cover_1610229
#print axioms cover_1610217

def state_1610209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 24)))
theorem cover_1610209 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610209 := by
  apply coveredState_split_literal (state := state_1610209) 3
    state_1610210 state_1610217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610210
  · exact cover_1610217
#print axioms cover_1610209

def state_1610208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1610208 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610208 := by
  apply coveredState_split_literal (state := state_1610208) 2
    state_1610209 state_1610292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610209
  · exact cover_1610292
#print axioms cover_1610208

def state_1610293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1610293 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610293 := by
  apply coveredState_split_literal (state := state_1610293) 2
    state_1610294 state_1610353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610294
  · exact cover_1610353
#print axioms cover_1610293

def state_1610207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1610207 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610207 := by
  apply coveredState_split_literal (state := state_1610207) 1
    state_1610208 state_1610293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610208
  · exact cover_1610293
#print axioms cover_1610207

def state_1610379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 25)))
theorem cover_1610379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610379 := by
  apply coveredState_split_literal (state := state_1610379) 4
    state_1610380 state_1610435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610380
  · exact cover_1610435
#print axioms cover_1610379

def state_1610378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 25)))
theorem cover_1610378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610378 := by
  apply coveredState_split_literal (state := state_1610378) 0
    state_1610379 state_1610444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610379
  · exact cover_1610444
#print axioms cover_1610378

def state_1610364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 25)))
theorem cover_1610364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610364 := by
  apply coveredState_split_literal (state := state_1610364) 3
    state_1610365 state_1610378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610365
  · exact cover_1610378
#print axioms cover_1610364

def state_1610363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1610363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610363 := by
  apply coveredState_split_literal (state := state_1610363) 2
    state_1610364 state_1610451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610364
  · exact cover_1610451
#print axioms cover_1610363

def state_1610465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 50)))
theorem cover_1610465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610465 := by
  apply coveredState_split_literal (state := state_1610465) 1
    state_1610466 state_1610511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610466
  · exact cover_1610511
#print axioms cover_1610465

def state_1610464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 25)))
theorem cover_1610464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610464 := by
  apply coveredState_split_literal (state := state_1610464) 4
    state_1610465 state_1610534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610465
  · exact cover_1610534
#print axioms cover_1610464

def state_1610463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 25)))
theorem cover_1610463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610463 := by
  apply coveredState_split_literal (state := state_1610463) 0
    state_1610464 state_1610547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610464
  · exact cover_1610547
#print axioms cover_1610463

def state_1610455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 25)))
theorem cover_1610455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610455 := by
  apply coveredState_split_literal (state := state_1610455) 3
    state_1610456 state_1610463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610456
  · exact cover_1610463
#print axioms cover_1610455

def state_1610454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1610454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610454 := by
  apply coveredState_split_literal (state := state_1610454) 2
    state_1610455 state_1610554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610455
  · exact cover_1610554
#print axioms cover_1610454

def state_1610362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1610362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610362 := by
  apply coveredState_split_literal (state := state_1610362) 1
    state_1610363 state_1610454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610363
  · exact cover_1610454
#print axioms cover_1610362

def state_1610206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_1610206 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610206 := by
  apply coveredState_split_literal (state := state_1610206) 4
    state_1610207 state_1610362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610207
  · exact cover_1610362
#print axioms cover_1610206

def state_1610205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_1610205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610205 := by
  apply coveredState_split_literal (state := state_1610205) 0
    state_1610206 state_1610581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610206
  · exact cover_1610581
#print axioms cover_1610205

def state_1610700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 81) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 99)))
theorem cover_1610700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610700 := by
  apply coveredState_split_literal (state := state_1610700) 3
    state_1610701 state_1610756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610701
  · exact cover_1610756
#print axioms cover_1610700

def state_1610688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 40) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 99)))
theorem cover_1610688 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610688 := by
  apply coveredState_split_literal (state := state_1610688) 1
    state_1610689 state_1610700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610689
  · exact cover_1610700
#print axioms cover_1610688

def state_1610687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 99)))
theorem cover_1610687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610687 := by
  apply coveredState_split_literal (state := state_1610687) 2
    state_1610688 state_1610807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610688
  · exact cover_1610807
#print axioms cover_1610687

def state_1610686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 99)))
theorem cover_1610686 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610686 := by
  apply coveredState_split_literal (state := state_1610686) 0
    state_1610687 state_1610814
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610687
  · exact cover_1610814
#print axioms cover_1610686

def state_1610676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 49)))
theorem cover_1610676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610676 := by
  apply coveredState_split_literal (state := state_1610676) 4
    state_1610677 state_1610686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610677
  · exact cover_1610686
#print axioms cover_1610676

def state_1610640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 49)))
theorem cover_1610640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610640 := by
  apply coveredState_split_literal (state := state_1610640) 3
    state_1610641 state_1610676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610641
  · exact cover_1610676
#print axioms cover_1610640

def state_1610925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 99)))
theorem cover_1610925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610925 := by
  apply coveredState_split_literal (state := state_1610925) 1
    state_1610926 state_1610939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610926
  · exact cover_1610939
#print axioms cover_1610925

def state_1610873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 99)))
theorem cover_1610873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610873 := by
  apply coveredState_split_literal (state := state_1610873) 2
    state_1610874 state_1610925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610874
  · exact cover_1610925
#print axioms cover_1610873

def state_1610872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 99)))
theorem cover_1610872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610872 := by
  apply coveredState_split_literal (state := state_1610872) 0
    state_1610873 state_1610996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610873
  · exact cover_1610996
#print axioms cover_1610872

def state_1610828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 49)))
theorem cover_1610828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610828 := by
  apply coveredState_split_literal (state := state_1610828) 4
    state_1610829 state_1610872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610829
  · exact cover_1610872
#print axioms cover_1610828
end Mub6.Numerical.CircleFullD0.Forest
